# Interface with NEXUS (Motion tracking system software)

## Overview of the repostitory
<div align="justify">
Motion capture systems are widely used to track the motion of bodies in a range of scenarios. This is done by using a set of infrared cameras arranged in an specific way, who track reflective markers positioned in body landmarks of interest. Then algorithms can determine the coordinates of a marker in space in a certain time. 

<br />
 
Tracking landmarks in human bodies and objects while performing specific tasks is crucial for a myriad of fields, including biomechanics, robotics, and prosthetics development. Having access to tools whieh ease handling of trajectory recording of reflective markers is crucial to facilitate the analysis of recorded trajectories.

<br />

This repository offers an easy to use Matlab library which interfaces with a widely known motion capture processing software, namely, NEXUS. The library allows the user to effortlessly access recorded trajectories within a motion capture study, subject classification, report extraction, and visualization. 

<br />
<br />

<p align="center">
   <img src="/Visualizations/Library_usage.gif" width="700" />
</p>
<br />

## Understanding repository

The repository was developed in Matlab, using the following software version:

```
- Matlab R2020b
- Vicon Nexus (Version 2.12.1)
- Vicon Nexus MATLAB sdk
```

You will need to add the <a href="[https://www.prensilia.com/](https://www.vicon.com/software/datastream-sdk/?section=downloads)">Nexus' Matlab sdk</a> to your project in order to use this library. Once this step is completed, the library in this repository will take over low level communication with Nexus and return marker's positions in an easilly accessible manner. Please explore the main.m files, which contains functions for both scenarios, namely, when you want to directly visualize a recently recording study (Nexus is open and the corresponding recording is selected), and when you have saved recorded data (we used .mat files, and you can adapt the code to your specific recordings format).

<br />
<br />

## Contributions

The contributions of this repository can be summarized as follows:

```
- Algorithms for handling differential equations, transfer functions, and state space representations
- Algorithms to manipulate matrices in an intuitive and efficient manner
- Algorithms to operate on system response parameters (e.g. angle, phase, etc.)
- An intuitive GUI (with similar nomenclature as MATLAB for transfer functions) to analyze systems time and frequency response
- An open source code, which can be used for teaching of fundamentals of control systems.
```

## Examples of GUI usage

### Time response to a Sine-wave-like excitement signal

The following figure shows the time response of a system to a sine wave excitement signal of 4Hz. Note that in order to obtain the time response, the user needs to do the following:

```
- Input the transfer function: [numerator separated by commas];[denominator separated by commas]
- Click on Create Model
- Input the sampling time (dt), initial time (t(t0)), and final time in seconds.
- If the user requires a step response, click on Step response. For sine wave excitements, please input the frequency of the sine wave and click on Sine response.
- The user can then click on get time response or view frequency spectrum.
- Although visualizations for Bode and Nichols charts are not available at the moment, the user can still click them and extract the frequency responses from the library.
```

<p align="center">
   <img src="/Visualizations/Sine_response.PNG" width="650" />
</p>

### Time response to a Step-like excitement signal

The following figure shows the time response of a system to a step-like excitement signal:

<p align="center">
  <img src="/Visualizations/Systems_time_response.PNG" width="650" />  
</p>

### Frequency spectrum of the input signal

The following figure shows the frequency spectrum of an input sine-wave-like signal of 52Hz:

<p align="center">
   <img src="/Visualizations/Frequency_spectrum.PNG" width="650" />
</p>

## License

Developed by Diego Hidalgo C. (2020). This repository is intended for research purposes only. If you wish to use any parts of the provided code for commercial purposes, please contact the author at hidalgocdiego@gmail.com.
