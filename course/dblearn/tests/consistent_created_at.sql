SELECT * FROM {{ ref('dim_listings_cleansed') }} l
INNER JOIN {{ ref('fct_reviews') }} r
using (listing_id)
 where l.created_at >= r.created_at