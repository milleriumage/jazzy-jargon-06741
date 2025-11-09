-- Update VIP plan ID from 'vip' to 'plan_vip' to match the app
UPDATE public.subscription_plans 
SET id = 'plan_vip' 
WHERE id = 'vip';