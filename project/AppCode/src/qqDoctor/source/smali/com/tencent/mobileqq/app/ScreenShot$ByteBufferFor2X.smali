.class Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor2X;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferWrap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mobileqq/app/ScreenShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteBufferFor2X"
.end annotation


# static fields
.field private static mGetAddressMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mData:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor2X;->mGetAddressMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor2X;->mData:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public bytebuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor2X;->mData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getAddress()I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor2X;->mGetAddressMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor2X;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getAddress"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor2X;->mGetAddressMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    sget-object v0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor2X;->mGetAddressMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor2X;->mData:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method
