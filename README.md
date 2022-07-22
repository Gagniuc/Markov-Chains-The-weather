# :cloud: Markov Chains The weather

This application uses a 2X2 transition matrix to make predictions by using a Markov chain. For exemplification, the values from the transition matrix represent the transition probabilities between two states found in a sequence of observations (ex. s=RSRRSRRSRRRRSRRRSSSRRSRRRS). These two states are: Sunny and Rainy, or R and S. Based on the initial probability vector, the application calculates how the weather may be on a number of days (steps). Note that a transition matrix can be obtained from a series of observations by using the [DPD algorithm](https://github.com/Gagniuc/Discrete-Probability-Detector-in-VB6). More in-depth information on these matters can be found in the [primary source](https://www.wiley.com/en-us/Markov+Chains%3A+From+Theory+to+Implementation+and+Experimentation-p-9781119387589). Note that <i>Markov Chains - The weather</i> is desidned in Visual Basic 6.0 (VB6), thus, the VB6 IDE is needed.

![screenshot](https://raw.githubusercontent.com/Gagniuc/Markov-Chains-The-weather/main/img/Markov%20Chains%20-%20The%20weather.png)

# References

- <i>Paul A. Gagniuc. Markov chains: from theory to implementation and experimentation. Hoboken, NJ,  John Wiley & Sons, USA, 2017, ISBN: 978-1-119-38755-8.</i>
