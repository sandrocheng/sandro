.class public Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionModel"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHot:Z

.field private mId:I

.field private mNew:Z

.field private mNumber:I

.field private mPluginKey:I

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mId:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mId:I

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mText:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mId:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mText:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mId:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mText:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mPluginKey:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    check-cast p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getId()I

    move-result v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mId:I

    return v0
.end method

.method public getImageResId()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mNumber:I

    return v0
.end method

.method public getPluginKey()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mPluginKey:I

    return v0
.end method

.method public getTextResId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isHot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mHot:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mNew:Z

    return v0
.end method

.method public setHot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mHot:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mId:I

    return-void
.end method

.method public setImageResId(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setNew(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mNew:Z

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mNumber:I

    return-void
.end method

.method public setPluginKey(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mPluginKey:I

    return-void
.end method

.method public setTextResId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->mText:Ljava/lang/String;

    return-void
.end method
