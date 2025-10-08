############### aws s3 resource ##############
resource "aws_s3_bucket" "mybucket" {
bucket = var.s3_bucket_name
tags = {
env = lookup(var.s3_tags, "environment")
}
}

resource "aws_s3_bucket" "myblock" {
}

resource "aws_ebs_volume" "myblockvolume" {
  availability_zone = "eu-west-1a"
  size              = 10
  encrypted = true
}

output bucketname {
	value = aws_s3_bucket.mybucket.id
}


output bucketname2 {
	value = aws_s3_bucket.myblock.id
}

output volumename {
	value = aws_ebs_volume.myblockvolume.id
}
