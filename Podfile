# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Calculator' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Calculator

	pod 'SwiftLint'
	pod 'Sentry'
  target 'CalculatorTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'CalculatorUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer| installer.pods_project.build_configurations.each do |config| config.build_settings['PROVISIONING_PROFILE_SPECIFIER'] = '' end end
