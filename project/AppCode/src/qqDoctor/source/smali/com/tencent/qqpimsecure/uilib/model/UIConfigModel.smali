.class public Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;
.super Ljava/lang/Object;


# instance fields
.field public mCreateEmptyTemplateUI:Z

.field public mCreateImageLoaderService:Z

.field public mCreateLoadingTemplateUI:Z

.field public mEmptyTemplateType:I

.field public mRegisterSDCardStateChangeReceiver:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mEmptyTemplateType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mRegisterSDCardStateChangeReceiver:Z

    return-void
.end method
