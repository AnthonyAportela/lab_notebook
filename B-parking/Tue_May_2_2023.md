[Prev](Fri_Apr_28_2023.md)

I will be making an update set of slides to help wrap a nice bow on this study.


A few mistakes.
1. In the calculation of BR limit
	* Including a percentage factor meant for an older estimation of the background yield
	* not including a necessary llp gen filter correction in the signal yield
2. Misunderstanding the bkg sample

Calculation of the BR limit:

$$
BR \approx 2 \frac{\sqrt{ N_{bkg} }}{N_{sig}}
$$

$$
N_{bkg} \approx N_{Bparking} \frac{N_{sample\_bkg\_cut}}{N_{sample\_bkg}}
$$

$$
N_{sig}(c\tau) \approx \epsilon_{\mu} \cdot \epsilon_{LLP} \cdot l \cdot \sigma \cdot \frac{N_{sample\_sig\_cut}^\prime(c\tau)}{N_{sample\_sig}}
$$
$$
N_{sample\_sig\_cut}^\prime(c\tau) =\sum \epsilon_{\mu\_{sf}}\frac{c\tau_{old}}{c\tau} \exp \left[ c\tau_{LLP} \left( \frac{1}{c\tau_{old}} -\frac{1}{c\tau} \right) \right]
$$

First mistake was this:
I did this:

$$
N_{bkg} \approx \epsilon_{\%Bparking} ~ N_{Bparking} \frac{N_{sample\_bkg\_cut}}{N_{sample\_bkg}}
$$

Instead of this:

$$
N_{bkg} \approx N_{Bparking} \frac{N_{sample\_bkg\_cut}}{N_{sample\_bkg}}
$$

I thought that $\epsilon_{\%Bparking}$ was the percentage of the b-parking dataset run through to calculate the background sample. 
Then last Friday I was told that $\epsilon_{\%Bparking} \sim N_{sample\_bkg\_cut}/N_{sample\_bkg}$, and therefore I was double accounting for that correction.

Secondly, I did not properly take the LLP gen filter into account when calculating the BR limits with Aram's jan2023 samples, i.e. I was missing the $\epsilon_{LLP}$ correction in the signal yield calculation.

$$
N_{sig}(c\tau) \approx \epsilon_{\mu} \cdot \epsilon_{LLP} \cdot l \cdot \sigma \cdot \frac{N_{sample\_sig\_cut}^\prime(c\tau)}{N_{sample\_sig}}
$$

Lastly, there was a misunderstanding in the details of jan2023 bkg sample which only had 4.74e+06 events.
Aram ended up reproducing the bkg sample to have 2.57e+07 events.
I don't know if this is the only difference between the two backgrounds, or if there were cuts involved in one, which weren't involved in the other.
I think it would be really helpful to document these differences...


![](Pasted%20image%2020230502133115.png)

But wait! 
You may ask why the combine card limits matched that estimated in python.
Well it turns out the N_sig and N_bkg calculations are what go into the combine card and those are apparently calculated wrong.


