.class public Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView$BitmapThumbnailWH;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapThumbnailWH"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView$BitmapThumbnailWH;->this$0:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView$BitmapThumbnailWH;->width:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView$BitmapThumbnailWH;->height:I

    return-void
.end method
