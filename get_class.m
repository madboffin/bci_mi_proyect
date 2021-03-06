
function predicted_class = get_class(features)
    load('Model_0 .mat','cl_lda')
    [~,ypredicted] = predict( cl_lda, features );
    [~,argmax] = max(ypredicted);
    predicted_class = argmax - 1;
end