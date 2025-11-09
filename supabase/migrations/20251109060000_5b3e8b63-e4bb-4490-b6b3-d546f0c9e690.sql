
-- Insert the missing credit packages that the frontend expects (pkg1-pkg6)
INSERT INTO public.credit_packages (id, credits, price, bonus, best_value, stripe_product_id)
VALUES 
  ('pkg1', 200, 2.00, 0, false, 'prod_SyYasByos1peGR'),
  ('pkg2', 500, 5.00, 0, false, 'prod_SyYeStqRDuWGFF'),
  ('pkg3', 1000, 10.00, 0, false, 'prod_SyYfzJ1fjz9zb9'),
  ('pkg4', 2500, 25.00, 0, true, 'prod_SyYmVrUetdiIBY'),
  ('pkg5', 5000, 50.00, 0, false, 'prod_SyYg54VfiOr7LQ'),
  ('pkg6', 10000, 100.00, 0, false, 'prod_SyYhva8A2beAw6')
ON CONFLICT (id) DO UPDATE 
SET 
  credits = EXCLUDED.credits,
  price = EXCLUDED.price,
  bonus = EXCLUDED.bonus,
  best_value = EXCLUDED.best_value,
  stripe_product_id = EXCLUDED.stripe_product_id;

-- Also add a 100 credit starter pack
INSERT INTO public.credit_packages (id, credits, price, bonus, best_value, stripe_product_id)
VALUES ('pkg0', 100, 1.00, 0, false, 'prod_SyYehlUkfzq9Qn')
ON CONFLICT (id) DO UPDATE 
SET 
  credits = EXCLUDED.credits,
  price = EXCLUDED.price,
  stripe_product_id = EXCLUDED.stripe_product_id;

-- Update subscription plans with correct Stripe product IDs and prices
UPDATE public.subscription_plans SET stripe_product_id = 'prod_SyYChoQJbIb1ye' WHERE id = 'plan_free';
UPDATE public.subscription_plans SET price = 9.00, stripe_product_id = 'prod_SyYK31lYwaraZW' WHERE id = 'basic';
UPDATE public.subscription_plans SET price = 15.00, stripe_product_id = 'prod_SyYMs3lMIhORSP' WHERE id = 'pro';
UPDATE public.subscription_plans SET price = 25.00, stripe_product_id = 'prod_SyYOUxRB7COSzb' WHERE id = 'plan_vip';
