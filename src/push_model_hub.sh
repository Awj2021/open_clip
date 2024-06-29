python  -m open_clip.push_to_hf_hub --model ViT-B-32 \
	    --pretrained /home/wenjie/research/wenjieProject/projects/open_clip/logs/2024_06_28-12_22_36-model_hf-hub:wisdomik-QuiltNet-B-32-lr_5e-06-b_64-j_5-p_amp/checkpoints/epoch_40.pt \
	        --repo-id wjworld/test_open_clip
