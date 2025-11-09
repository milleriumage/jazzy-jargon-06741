-- Add VIP Plan with Stripe product ID
INSERT INTO public.subscription_plans (id, name, credits, price, currency, features, stripe_product_id) 
VALUES (
  'vip',
  'VIP Plan',
  5000,
  29.99,
  'USD',
  ARRAY['5000 credits per month', 'Priority support', 'Exclusive VIP content', 'Early access to new features', 'Cancel anytime'],
  'prod_SyYOUxRB7COSzb'
)
ON CONFLICT (id) DO UPDATE SET 
  stripe_product_id = 'prod_SyYOUxRB7COSzb',
  name = 'VIP Plan',
  credits = 5000,
  price = 29.99,
  features = ARRAY['5000 credits per month', 'Priority support', 'Exclusive VIP content', 'Early access to new features', 'Cancel anytime'];