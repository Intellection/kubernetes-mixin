local kubernetes = import "kubernetes-mixin/mixin.libsonnet";

kubernetes {
  _config+:: {
    cadvisorSelector: 'job="kubernetes-cadvisor"',
    kubeletSelector: 'job="kubernetes-nodes"',
    kubeStateMetricsSelector: 'job="kube-state-metrics"',
    nodeExporterSelector: 'job="kubernetes-pods"',
    kubeSchedulerSelector: 'job="kube-scheduler"',
    kubeControllerManagerSelector: 'job="kube-controller-manager"',
    kubeApiserverSelector: 'job="kubernetes-apiservers"',
    kubeProxySelector: 'job="kube-proxy"',
    
    grafanaK8s+:: {
      dashboardNamePrefix: 'Kubernetes / ',
      dashboardTags: ['kubernetes', 'infrastucture'],
    },
  },
}
