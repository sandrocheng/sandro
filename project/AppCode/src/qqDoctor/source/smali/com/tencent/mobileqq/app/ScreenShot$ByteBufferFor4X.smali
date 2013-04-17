.class Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor4X;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferWrap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mobileqq/app/ScreenShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteBufferFor4X"
.end annotation


# static fields
.field private static mAddressFiled:Ljava/lang/reflect/Field;

.field private static mBlockFiled:Ljava/lang/reflect/Field;


# instance fields
.field private mData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor4X;->mData:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public bytebuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor4X;->mData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getAddress()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor4X;->mBlockFiled:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    const-class v1, Ljava/nio/Buffer;

    const-string v2, "block"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor4X;->mBlockFiled:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v1, "java.nio.MemoryBlock"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor4X;->mAddressFiled:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    sget-object v1, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor4X;->mBlockFiled:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor4X;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor4X;->mAddressFiled:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
