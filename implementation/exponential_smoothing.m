function [dy_pred, dx_pred] = exponential_smoothing(dy_true, dy_pred, dx_true, dx_pred, alpha)

    dy_pred = ((1 - alpha) * dy_pred) + alpha .* dy_true; 
    dx_pred = ((1 - alpha) * dx_pred) + alpha .* dx_true; 
    
end