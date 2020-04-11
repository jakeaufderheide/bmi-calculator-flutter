import 'package:bmi_calculator/constants.dart';

enum BmiType {
  obese,
  overweight,
  healthy,
  underweight,
}

class Result {
  Result(double bmi) {
    this._bmi = bmi;
    if (bmi < 18.5) {
      _bmiType = BmiType.underweight;
    } else if (bmi < 24.9) {
      _bmiType = BmiType.healthy;
    } else if (bmi < 29.9) {
      _bmiType = BmiType.overweight;
    } else {
      _bmiType = BmiType.obese;
    }
  }

  double _bmi;
  BmiType _bmiType;

  String getBmiString() {
    return _bmi.toStringAsFixed(2);
  }

  String getBmiTypeString() {
    switch (_bmiType) {
      case BmiType.underweight:
        return 'UNDERWEIGHT';
        break;
      case BmiType.healthy:
        return 'HEALTHY';
        break;
      case BmiType.overweight:
        return 'OVERWEIGHT';
        break;
      default:
        return 'OBESE';
        break;
    }
  }

  String getRecommendation() {
    switch (_bmiType) {
      case BmiType.underweight:
        return kUnderweightRecommendationText;
        break;
      case BmiType.healthy:
        return kHealthyRecommendationText;
        break;
      case BmiType.overweight:
        return kOverweightRecommendationText;
        break;
      default:
        return kObeseRecommendationText;
        break;
    }
  }
}
