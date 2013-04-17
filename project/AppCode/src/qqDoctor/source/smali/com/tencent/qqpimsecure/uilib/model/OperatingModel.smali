.class public Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;
.super Ljava/lang/Object;


# static fields
.field public static final BUTTON_STYLE_CHECK_BOX:I = 0x2

.field public static final BUTTON_STYLE_GREEN:I = 0x1

.field public static final BUTTON_STYLE_WHITE:I


# instance fields
.field private mAction:Z

.field private mButtonIconid:I

.field private mCheck:Z

.field private mEnable:Z

.field private mID:I

.field private mNumber:I

.field private mStyle:I

.field private mText:Ljava/lang/String;

.field private mTextSize:I

.field private mVisible:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mEnable:Z

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mVisible:I

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mCheck:Z

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mAction:Z

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mID:I

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mText:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mStyle:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mEnable:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mVisible:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mCheck:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mAction:Z

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mID:I

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mStyle:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mEnable:Z

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mVisible:I

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mCheck:Z

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mAction:Z

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mID:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mText:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mStyle:I

    return-void
.end method


# virtual methods
.method public getButtonIconid()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mButtonIconid:I

    return v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mID:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mNumber:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mStyle:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mTextSize:I

    return v0
.end method

.method public getVisible()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mVisible:I

    return v0
.end method

.method public isAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mAction:Z

    return v0
.end method

.method public isCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mCheck:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mEnable:Z

    return v0
.end method

.method public setAction(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mAction:Z

    return-void
.end method

.method public setButtonIconid(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mButtonIconid:I

    return-void
.end method

.method public setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mCheck:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mEnable:Z

    return-void
.end method

.method public setID(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mID:I

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mNumber:I

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mStyle:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mText:Ljava/lang/String;

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mTextSize:I

    return-void
.end method

.method public setVisible(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->mVisible:I

    return-void
.end method
