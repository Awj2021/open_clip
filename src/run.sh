export CUDA_VISIBLE_DEVICES=0,1
torchrun --nproc_per_node 1 -m training.main \
    --batch-size 64 \
    --precision amp \
    --workers 5 \
    --report-to tensorboard \
    --save-frequency 2 \
    --logs="../logs" \
    --dataset-type csv \
    --csv-separator="," \
    --train-data  /home/wenjie/dataset/chaoyang/chaoyang_train_multi_annos.csv \
    --csv-img-key filepath \
    --csv-caption-key caption \
    --warmup 1000 \
    --lr=5e-6 \
    --wd=0.1 \
    --epochs=64 \
    --model hf-hub:wisdomik/QuiltNet-B-32 
    # --pretrained hf-hub:wisdomik/QuiltNet-B-32
