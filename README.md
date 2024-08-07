# Purpose  
1. huggingface LLM 모델 다운로드  
2. 모델변환 (safetensors to GGUF)  
3. 양자화

# 모델변환  
--outtype : output format을 설정 (f32, f16, bf16, q8_0, auto)    
             q8_0 선택시에는 양자화 불가능 

# 양자화   
f64, f32, f16, bf16, 
q4_0, q4_1, q5_0, q8_0, q8_1,   
q2_k, q3_k, q4_k, q5_k, q6_k, q8_k,    
i8, i16, i32, i64, ... 등등    
