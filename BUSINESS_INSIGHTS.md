# Business Insights & Recommendations

## 1. Project Objective

Analyze credit card customer data to identify patterns associated with payment default and provide insights that can support credit risk management.

## 2. Key Findings

### Overall Default Rate

- Total customers analyzed: 30,000.
- Customers with default: 6,636.
- Customers without default: 23,364.
- Overall default rate: 22.12%.

### Payment Status (`PAY_0`)

Payment status showed the strongest association with future default among the variables analyzed.

| Payment status | Default rate |
|---|---:|
| 0 | 12.8% |
| 1 | 33.9% |
| 2 | 69.1% |

The default rate increases substantially across these payment status categories.

### Credit Limit

- Average credit limit for customers without default: 178,099.
- Average credit limit for customers with default: 130,109.

Customers who defaulted had a lower average credit limit in this dataset.

### Gender

- Category 1: 24.2% default rate.
- Category 2: 20.8% default rate.

This is a descriptive difference and should not be interpreted as a causal relationship.

### Age

- Average age without default: 35.4 years.
- Average age with default: 35.7 years.

The average ages are very similar in this initial analysis.

## 3. Business Recommendations

### Early Warning System

Develop a monitoring system to identify customers showing signs of payment delays.

Potential actions:
- Send payment reminders.
- Contact customers with recent payment delays.
- Review credit exposure when risk indicators increase.
- Offer suitable repayment alternatives to customers experiencing financial difficulties.

### Credit Risk Monitoring

Use payment behavior as an important indicator in credit risk monitoring, while combining it with other customer characteristics and additional analysis.

## 4. Limitations

- The analysis is descriptive and identifies associations, not causation.
- The payment status categories shown are only a subset of the full dataset.
- The findings should be validated with additional statistical analysis before being used in actual credit decisions.

## 5. Conclusion

Payment status is the most relevant indicator of future default among the variables examined in this initial analysis. Monitoring payment behavior may help financial institutions identify customers who require preventive attention and improve credit risk management.
