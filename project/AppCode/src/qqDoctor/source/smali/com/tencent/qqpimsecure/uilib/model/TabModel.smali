.class public Lcom/tencent/qqpimsecure/uilib/model/TabModel;
.super Ljava/lang/Object;


# static fields
.field public static final STYLE_MULTI_TAB_TAB:I = 0x1

.field public static final STYLE_MULTI_TAB_TITLE:I


# instance fields
.field private isShowFooterLine:Z

.field private mClickable:Z

.field private mContent:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mFocusIcon:Landroid/graphics/drawable/Drawable;

.field private mID:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mMessageNum:I

.field private mMultiStyle:I

.field private mTagImage:Landroid/graphics/drawable/Drawable;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->isShowFooterLine:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mClickable:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMultiStyle:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->isShowFooterLine:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mClickable:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMultiStyle:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mID:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContent:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->isShowFooterLine:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mClickable:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMultiStyle:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mID:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mFocusIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mTitle:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMessageNum:I

    return-void
.end method

.method public constructor <init>(IIIILandroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->isShowFooterLine:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mClickable:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMultiStyle:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mID:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContent:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mTagImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->isShowFooterLine:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mClickable:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMultiStyle:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mID:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContent:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->isShowFooterLine:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mClickable:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMultiStyle:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mID:I

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMessageNum:I

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mFocusIcon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->isShowFooterLine:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mClickable:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMultiStyle:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mID:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContent:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget v0, p1, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mID:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mClickable:Z

    return v0
.end method

.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFocusIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mFocusIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mID:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMessageNum()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMessageNum:I

    return v0
.end method

.method public getMultiStyle()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMultiStyle:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getmTagImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mTagImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isShowFooterLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->isShowFooterLine:Z

    return v0
.end method

.method public setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mClickable:Z

    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mContent:Ljava/lang/CharSequence;

    return-void
.end method

.method public setFocusIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mFocusIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setID(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mID:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMessageNum(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMessageNum:I

    return-void
.end method

.method public setMultiStyle(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mMultiStyle:I

    return-void
.end method

.method public setShowFooterLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->isShowFooterLine:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setmTagImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->mTagImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method
