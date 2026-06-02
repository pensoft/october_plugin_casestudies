<?php namespace Pensoft\Casestudies\Models;

use Model;
use System\Models\File;
use Pensoft\Partners\Models\Partners;
use RainLab\Location\Models\Country as CountryModel;

/**
 * Model
 */
class Data extends Model
{
    use \October\Rain\Database\Traits\Validation;

    use \October\Rain\Database\Traits\SoftDelete;

    use \October\Rain\Database\Traits\Sortable;

    use \October\Rain\Database\Traits\Sluggable;

    protected $dates = ['deleted_at'];

    /**
     * @var array Generate slugs for these attributes.
     */
    protected $slugs = ['slug' => 'title'];


    /**
     * @var string The database table used by the model.
     */
    public $table = 'pensoft_casestudies_data';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    /**
     * @var array Fields stored as JSON (repeater data).
     */
    protected $jsonable = [
        'quick_facts',
    ];

    public $attachOne = [
        'attachment' => File::class,
        'image' => File::class,
    ];

    public $attachMany = [
        'gallery' => File::class
    ];

    /**
     * Options for the "country" dropdown inside the quick facts repeater.
     * Only enabled RainLab.Location countries.
     */
    public function getCountryOptions()
    {
        return CountryModel::whereNotNull('is_enabled')
            ->where('is_enabled', true)
            ->orderBy('name')
            ->lists('name', 'id');
    }

    /**
     * Options for the "partner" dropdown inside the quick facts repeater.
     */
    public function getPartnerOptions()
    {
        return Partners::orderBy('instituion')->lists('instituion', 'id');
    }
}
