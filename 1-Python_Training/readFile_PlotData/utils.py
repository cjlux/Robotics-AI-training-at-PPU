from numpy.fft import rfft
import numpy as np

def compute_period(T:np.ndarray, S:np.ndarray) -> float: 
    ''' Computes the period of an harmonic signal by searching the highest peak 
        in its frequency spectrum.
        
        Parameters:
                T:ndarry: the 1D array of the time discrete values, Ti. 
                S:ndarry: the 1D array af the signal discrete values, Si.
        Retuns:
                period_signal:float: the period value of the signal S.
    '''
        
    # Compute the signal FFT:
    FFT_S = rfft(S - S.mean())
    
    # Compute the normalized amplitude spectrum:
    DSP_S = abs(FFT_S)
    DSP_S = DSP_S/DSP_S.max()
    
    # useful parameters:
    N1 = len(S)
    N2 = len(FFT_S)
    
    # signal sampling period:
    sampling_period = T[1]-T[0]
    # sampling frequency:
    sampling_freq = 1/sampling_period
    df = sampling_freq/N1
    # frequencies vector:
    freq_vector = np.arange(N2)*df
    
    peak_rank = DSP_S.argmax()
    peak_freq = freq_vector[peak_rank] 
    period  = 1/peak_freq
    
    return period




