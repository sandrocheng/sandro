.class Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapThumbnailWH"
.end annotation


# instance fields
.field height:I

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

.field width:I


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;->width:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;->height:I

    return-void
.end method
