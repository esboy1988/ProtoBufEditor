package proto {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import proto.Equip2;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class EquipList2 extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ARR:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("proto.EquipList.arr", "arr", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return proto.Equip2; });

		[ArrayElementType("proto.Equip2")]
		public var arr:Array = [];

		/**
		 *  @private
		 */
		override public final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var arr$index:uint = 0; arr$index < this.arr.length; ++arr$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.arr[arr$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override public final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.arr.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new proto.Equip2()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
