.class public final Laed;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)V
    .locals 0

    iput-object p1, p0, Laed;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x2

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v0, p0, Laed;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->i(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b05e4

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(I)V

    iget-object v0, p0, Laed;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-object v4, v2, v0

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v5}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    aget-object v4, v4, v8

    invoke-virtual {v5, v4}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioEventCode(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {v1, v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    new-instance v0, Laee;

    invoke-direct {v0, p0, v3, v1}, Laee;-><init>(Laed;Ljava/util/ArrayList;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    return-void
.end method
