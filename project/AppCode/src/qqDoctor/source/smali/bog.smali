.class final Lbog;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lkw;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbod;


# direct methods
.method constructor <init>(Lbod;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbog;->c:Lbod;

    iput-object p2, p0, Lbog;->a:Lkw;

    iput-object p3, p0, Lbog;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    new-instance v2, Lge;

    iget-object v0, p0, Lbog;->c:Lbod;

    invoke-static {v0}, Lbod;->h(Lbod;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lge;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lbog;->a:Lkw;

    const/16 v0, 0x9

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, v2, Lge;->a:Landroid/content/Context;

    const v5, 0x7f0b05a6

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    iget-object v0, v2, Lge;->a:Landroid/content/Context;

    const v5, 0x7f0b05a7

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    iget-object v0, v2, Lge;->a:Landroid/content/Context;

    const v5, 0x7f0b05a8

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    iget-object v0, v2, Lge;->a:Landroid/content/Context;

    const v5, 0x7f0b05a9

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    iget-object v0, v2, Lge;->a:Landroid/content/Context;

    const v5, 0x7f0b05aa

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    const/4 v0, 0x5

    iget-object v5, v2, Lge;->a:Landroid/content/Context;

    const v6, 0x7f0b05ab

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x6

    iget-object v5, v2, Lge;->a:Landroid/content/Context;

    const v6, 0x7f0b05ac

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x7

    iget-object v5, v2, Lge;->a:Landroid/content/Context;

    const v6, 0x7f0b05ad

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0x8

    iget-object v5, v2, Lge;->a:Landroid/content/Context;

    const v6, 0x7f0b05ae

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0x9

    new-array v5, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LQQPIM/EIllegaReason;->IR_Pay:LQQPIM/EIllegaReason;

    invoke-virtual {v6}, LQQPIM/EIllegaReason;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LQQPIM/EIllegaReason;->IR_Conn:LQQPIM/EIllegaReason;

    invoke-virtual {v6}, LQQPIM/EIllegaReason;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LQQPIM/EIllegaReason;->IR_SMS:LQQPIM/EIllegaReason;

    invoke-virtual {v6}, LQQPIM/EIllegaReason;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LQQPIM/EIllegaReason;->IR_GetInfo:LQQPIM/EIllegaReason;

    invoke-virtual {v6}, LQQPIM/EIllegaReason;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LQQPIM/EIllegaReason;->IR_Plugin:LQQPIM/EIllegaReason;

    invoke-virtual {v6}, LQQPIM/EIllegaReason;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    const/4 v0, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, LQQPIM/EIllegaReason;->IR_Ad:LQQPIM/EIllegaReason;

    invoke-virtual {v7}, LQQPIM/EIllegaReason;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, LQQPIM/EIllegaReason;->IR_TermProc:LQQPIM/EIllegaReason;

    invoke-virtual {v7}, LQQPIM/EIllegaReason;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, LQQPIM/EIllegaReason;->IR_Damage:LQQPIM/EIllegaReason;

    invoke-virtual {v7}, LQQPIM/EIllegaReason;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, LQQPIM/EIllegaReason;->IR_Other:LQQPIM/EIllegaReason;

    invoke-virtual {v7}, LQQPIM/EIllegaReason;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_0

    new-instance v7, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v7}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    aget-object v8, v4, v0

    invoke-virtual {v7, v8}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    aget-object v8, v5, v0

    invoke-virtual {v7, v8}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioEventCode(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v4, v2, Lge;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    iget-object v4, v2, Lge;->a:Landroid/content/Context;

    const v6, 0x7f0b05a5

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lgf;

    invoke-direct {v1, v2, v5, v3, v0}, Lgf;-><init>(Lge;[Ljava/lang/String;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    iget-object v0, p0, Lbog;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
