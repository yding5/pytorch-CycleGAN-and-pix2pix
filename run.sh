#####################################C_test
python train_ct_3.py --dataroot ./datasets/tw_np_all --name twnpac_cycleganc_batch4 --dataset_mode unalignedC --model cycle_gan_c --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 > rec/twnpac_cycleganc_batch4_html_rec &

#####################################npy
### partial tw dataset
# python train_ct.py --dataroot ./datasets/tw_np --name twnp_cyclegan_batch4 --model cycle_gan --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 > rec/twnp_cyclegan_batch4_html_rec

### all tw dataset
# python train_ct.py --dataroot ./datasets/tw_np_all --name twnpa_cyclegan_batch4 --model cycle_gan --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 --gpu_ids 1 > rec/twnpa_cyclegan_batch4_html_rec
# python test_ct_1.py --dataroot ./datasets/tw_np_all --name twnpa_cyclegan_batch4 --model cycle_gan --serial_batches

### all tw dataset filtering test out + active learning
# python train_al.py --dataroot ./datasets/tw_np_all --name twnpa_cyclegan_batch4 --model cycle_gan --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 --gpu_ids 1 > rec/twnpa_cyclegan_batch4_html_rec
# python test_ct_al.py --dataroot ./datasets/tw_np_all --name twnpa_cyclegan_batch4 --model cycle_gan --serial_batches

### one tw dataset
# python train_ct.py --dataroot ./datasets/tw_np_one --name twnpo_cyclegan_batch4 --model cycle_gan --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 --gpu_ids 1 > rec/twnpo_cyclegan_batch4_html_rec
# python test_ct_1.py --dataroot ./datasets/tw_np_one --name twnpo_cyclegan_batch4 --model cycle_gan
# python train_ct.py --dataroot ./datasets/tw_np_one --name twnpo_cyclegan_batch4_epoch100 --model cycle_gan --batch_size 4 --niter 100 --niter_decay 100 --display_id -1 --gpu_ids 1 > rec/twnpo_cyclegan_batch4_epoch100_html_rec
# python test_ct_1.py --dataroot ./datasets/tw_np_one --name twnpo_cyclegan_batch4_epoch100 --model cycle_gan --serial_batches

### one/two tw dataset
# python train_ct.py --dataroot ./datasets/tw_np_one --name twnpot_cyclegan_batch4 --model cycle_gan --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 > rec/twnpot_cyclegan_batch4_html_rec
# nohup python train_ct.py --dataroot ./datasets/tw_np_one --name twnpot_cyclegan_batch4 --model cycle_gan --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 > rec/twnpot_cyclegan_batch4_html_rec &
# python test_ct_2.py --dataroot ./datasets/tw_np_one --name twnpot_cyclegan_batch4 --model cycle_gan --serial_batches

### one/partially two dataset
# python train_ct.py --dataroot ./datasets/tw_np_one --name twnpopt_cyclegan_batch4 --model cycle_gan --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 --gpu_ids 1 > rec/twnpopt_cyclegan_batch4_html_rec
# nohup python train_ct.py --dataroot ./datasets/tw_np_one --name twnpot_cyclegan_batch4 --model cycle_gan --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 > rec/twnpot_cyclegan_batch4_html_rec &
python test_ct_2.py --dataroot ./datasets/tw_np_one --name twnpot_cyclegan_batch4 --model cycle_gan --serial_batches

### regenerated one dataset
# python train_ct.py --dataroot ./datasets/tw_np_one_1 --name twnpo1_cyclegan_batch4 --model cycle_gan --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 --gpu_ids 1 > rec/twnpo1_cyclegan_batch4_html_rec
python test_ct_2.py --dataroot ./datasets/tw_np_one --name twnpo1_cyclegan_batch4 --model cycle_gan --serial_batches

#####################################dcm
### batch4
# python train.py --dataroot ./datasets/ctest --name ctest_cyclegan_batch4 --model cycle_gan --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 --no_html > rec/ctest_cyclegan_batch4_rec
# python test_ct_1.py --dataroot ./datasets/ctest --name ctest_cyclegan_batch4 --model cycle_gan

# python train_ct.py --dataroot ./datasets/ctest --name ctest_cyclegan_batch4 --model cycle_gan --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 > rec/ctest_cyclegan_batch4_html_rec
# python train_ct.py --dataroot ./datasets/ctest --name ctest_cyclegan_batch4_epoch50 --model cycle_gan --batch_size 4 --niter 50 --niter_decay 50 --display_id -1 > rec/ctest_cyclegan_batch4_epoch50_html_rec
# python train_ct.py --dataroot ./datasets/ctest --name ctest_cyclegan_batch4_epoch50_idt0 --model cycle_gan --batch_size 4 --niter 50 --niter_decay 50 --display_id -1 --gpu_ids 1 --lambda_identity 0 > rec/ctest_cyclegan_batch4_epoch50_idt0_html_rec
# python train_ct.py --dataroot ./datasets/ctest --name ctest_cyclegan_batch4_epoch50_idt0_AB5 --model cycle_gan --batch_size 4 --niter 50 --niter_decay 50 --display_id -1 --lambda_identity 0 --lambda_A 5.0 --lambda_B 5.0 > rec/ctest_cyclegan_batch4_epoch50_idt0_AB5_html_rec

### low
# python train_ct.py --dataroot ./datasets/ctestL --name ctestL_cyclegan_batch4 --model cycle_gan --batch_size 4 --niter 25 --niter_decay 25 --display_id -1 > rec/ctestL_cyclegan_batch4_html_rec

### batch2
# python train.py --dataroot ./datasets/ctest --name ctest_cyclegan_batch2 --model cycle_gan --batch_size 2 --niter 50 --niter_decay 50 --display_id -1 --no_html > rec/ctest_cyclegan_batch2_rec
# python test.py --dataroot ./datasets/ctest --name ctest_cyclegan_batch2 --model cycle_gan > rec/ctest_cyclegan_batch2_test_rec

### original samples
# rm -r ./checkpoints/maps_cyclegan
# python train.py --dataroot ./datasets/maps --name maps_cyclegan --model cycle_gan --display_id -1 --no_html --gpu_ids 1 > rec/maps_cyclegan_rec
# python train.py --dataroot ./datasets/maps --name maps_cyclegan_batch2 --model cycle_gan --batch_size 2 --niter 50 --niter_decay 50 --display_id -1 --no_html > rec/maps_cyclegan_batch2_rec
# python train.py --dataroot ./datasetss/maps --name maps_cyclegan_batch20_iter10 --model cycle_gan --batch_size 20 --niter 10 --niter_decay 10 --display_id -1 --no_html > rec/maps_cyclegan_batch20_iter10_rec
# python test.py --dataroot ./datasets/maps --name maps_cyclegan --model cycle_gan
# python test.py --dataroot ./datasets/horse2zebra/testA --name horse2zebra_pretrained --model test