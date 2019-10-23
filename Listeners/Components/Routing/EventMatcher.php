<?php declare(strict_types=1);

/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Planungswelten
 *
 * @package   OstPlanungswelten
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2019 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

namespace OstPlanungswelten\Listeners\Components\Routing;

use Enlight_Event_EventArgs as EventArgs;

class EventMatcher
{
    /**
     * ...
     *
     * @var array
     */
    protected $configuration;

    /**
     * ...
     *
     * @var array
     */
    protected $route = [
        'controller' => 'OstPlanungswelten',
        'action'     => 'index'
    ];

    /**
     * ...
     *
     * @var array
     */
    protected $keys = [
        'witten',
        'recklinghausen',
        'leverkusen',
        'haan',
        'bottrop'
    ];

    /**
     * ...
     *
     * @param array $configuration
     */
    public function __construct(array $configuration)
    {
        // set params
        $this->configuration = $configuration;
    }

    /**
     * ...
     *
     * @param EventArgs $arguments
     *
     * @return mixed
     */
    public function changeRoute(EventArgs $arguments)
    {
        // get the current path
        $path = $arguments->get('request')->getPathInfo();

        // trim the slash
        $path = ltrim($path, '/');

        // default seo url
        if ((!empty($this->configuration['seoUrl'])) && (strtolower($path) === strtolower($this->configuration['seoUrl']))) {
            // reroute to planungswelten
            return $this->route;
        }

        // every city
        foreach ($this->keys as $key) {
            // set for this one?
            if ((!empty($this->configuration['seoUrl' . ucwords($key)])) && (strtolower($path) === strtolower($this->configuration['seoUrl' . ucwords($key)]))) {
                // reroute to planungswelten
                return array_merge(
                    $this->route,
                    array('key' => $key)
                );
            }
        }

        // nothing to do
        return null;
    }
}
