.class public Lcom/tencent/qqpimsecure/uilib/model/ResultModel;
.super Ljava/lang/Object;


# static fields
.field public static final RESULT_TYPE_GROUP:I = 0x0

.field public static final RESULT_TYPE_ITEM:I = 0x1

.field public static final STATE_OPTIMIZATION:I = 0x7f020190

.field public static final STATE_RISK:I = 0x7f020192

.field public static final STATE_SAFETY:I = 0x7f020193

.field public static final TEXT_COLOR_GREEN:I = 0x3

.field public static final TEXT_COLOR_RED:I = 0x1

.field public static final TEXT_COLOR_YRLLOW:I = 0x2


# instance fields
.field private mCount:J

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mMessage:Ljava/lang/String;

.field private mResultType:I

.field private mState:I

.field private mTitle:Ljava/lang/String;

.field private mTitleColor:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitleColor:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mState:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mResultType:I

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitle:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitleColor:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mState:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mResultType:I

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitle:Ljava/lang/String;

    iput-wide p4, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mCount:J

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitleColor:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mState:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mResultType:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitle:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mState:I

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitleColor:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mState:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mResultType:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitle:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitleColor:I

    iput p5, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mState:I

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;J)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitleColor:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mState:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mResultType:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitle:Ljava/lang/String;

    iput-wide p4, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mCount:J

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitleColor:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mState:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mResultType:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitle:Ljava/lang/String;

    iput-wide p4, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mCount:J

    iput-object p6, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitleColor:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mState:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mResultType:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mCount:J

    return-wide v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mResultType:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mState:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitleColor:I

    return v0
.end method

.method public setCount(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mCount:J

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setResultType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mResultType:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mState:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->mTitleColor:I

    return-void
.end method
