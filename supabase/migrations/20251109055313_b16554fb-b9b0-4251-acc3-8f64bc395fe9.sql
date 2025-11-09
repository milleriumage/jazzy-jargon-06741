-- Add the free plan that the app is expecting
INSERT INTO public.subscription_plans (id, name, credits, price, currency, features, stripe_product_id) 
VALUES (
  'plan_free',
  'Free Plan',
  100,
  0.00,
  'USD',
  ARRAY['100 credits per month', 'Basic features', 'Community support'],
  'prod_free_plan'
)
ON CONFLICT (id) DO NOTHING;