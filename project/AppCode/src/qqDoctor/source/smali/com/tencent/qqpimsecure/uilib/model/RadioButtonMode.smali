.class public Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;
.super Ljava/lang/Object;


# instance fields
.field private isSelected:Z

.field private radioButtonImageId:I

.field private radioButtonName:Ljava/lang/String;

.field private radioEventCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRadioButtonImageId()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->radioButtonImageId:I

    return v0
.end method

.method public getRadioButtonName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->radioButtonName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioEventCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->radioEventCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->isSelected:Z

    return v0
.end method

.method public setRadioButtonImageId(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->radioButtonImageId:I

    return-void
.end method

.method public setRadioButtonName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->radioButtonName:Ljava/lang/String;

    return-void
.end method

.method public setRadioEventCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->radioEventCode:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->isSelected:Z

    return-void
.end method
