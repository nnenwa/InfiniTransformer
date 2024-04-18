export CUDA_VISIBLE_DEVICES=0

accelerate launch --mixed_precision='bf16' \
    train.gemma.infini.noclm.py \
    --model_name_or_path='google/gemma-2b' \
    --segment_length=2048 \
    --block_size=32768 \
    --dataset_name='wikitext' \
    --dataset_config_name='wikitext-2-raw-v1' \
    --per_device_train_batch_size=1 \
    --output_dir='./models/gemma-2b-infini-noclm-wikitext' \
    --num_train_epochs=1 \
    --learning_rate=5e-5 \
    --seed=42 \
    --low_cpu_mem_usage
