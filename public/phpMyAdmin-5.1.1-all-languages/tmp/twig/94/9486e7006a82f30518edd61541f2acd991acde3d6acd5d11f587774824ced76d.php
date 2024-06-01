<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* table/export/index.twig */
class __TwigTemplate_b620bad158ba909129a0a2e5d2ec19d6cf697974c9748e7901370f3e658cceb0 extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
            'message' => [$this, 'block_message'],
            'title' => [$this, 'block_title'],
        ];
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return "export.twig";
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 14
        ob_start(function () { return ''; });
        // line 15
        echo "  ";
        echo _gettext("@SERVER@ will become the server name, @DATABASE@ will become the database name and @TABLE@ will become the table name.");
        $context["filename_hint"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        // line 1
        $this->parent = $this->loadTemplate("export.twig", "table/export/index.twig", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_message($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo ($context["message"] ?? null);
    }

    // line 6
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 7
        echo "  ";
        if ((($context["export_type"] ?? null) == "raw")) {
            // line 8
            echo "    ";
            // l10n: A query that the user has written freely
            echo _gettext("Exporting a raw query");
            // line 9
            echo "  ";
        } else {
            // line 10
            echo "    ";
            echo twig_escape_filter($this->env, sprintf(_gettext("Exporting rows from \"%s\" table"), ($context["table"] ?? null)), "html", null, true);
            echo "
  ";
        }
    }

    public function getTemplateName()
    {
        return "table/export/index.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  75 => 10,  72 => 9,  68 => 8,  65 => 7,  61 => 6,  54 => 3,  49 => 1,  45 => 15,  43 => 14,  36 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "table/export/index.twig", "/home/ec2-user/environment/employee_management/public/phpMyAdmin-5.1.1-all-languages/templates/table/export/index.twig");
    }
}
