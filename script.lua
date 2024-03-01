local tool = script.Parent
local animation = Instance.new("Animation")
local assetID = "16288890384" -- example Asset ID
animation.AnimationId = "http://www.roblox.com/asset/?id=" .. assetID
local debounce = true
tool.Activated:Connect(function()
	local humanoid = tool.Parent:FindFirstChild("Humanoid")
	local animationTrack = humanoid:LoadAnimation(animation)
	if not animationTrack.IsPlaying and debounce then
		debounce = false
		animationTrack:Play()
		animationTrack.Stopped:Wait()
		debounce = true
	end
end)