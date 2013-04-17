.class final Laqm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Laqf;


# direct methods
.method constructor <init>(Laqf;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Laqm;->c:Laqf;

    iput-object p2, p0, Laqm;->a:Landroid/widget/EditText;

    iput-object p3, p0, Laqm;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Laqm;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laqm;->c:Laqf;

    invoke-static {v0}, Laqf;->E(Laqf;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laqm;->c:Laqf;

    invoke-static {v1}, Laqf;->F(Laqf;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0423

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laqm;->c:Laqf;

    invoke-static {v0}, Laqf;->g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v2

    iget-object v0, p0, Laqm;->c:Laqf;

    invoke-static {v0}, Laqf;->b(Laqf;)Lii;

    move-result-object v0

    iget-object v0, v0, Lii;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "selfnum"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laqm;->c:Laqf;

    invoke-static {v0}, Laqf;->G(Laqf;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setIpHeader(Ljava/lang/String;)V

    iget-object v0, p0, Laqm;->c:Laqf;

    invoke-static {v0}, Laqf;->g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    iget-object v0, p0, Laqm;->c:Laqf;

    invoke-virtual {v0}, Laqf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Laqm;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    goto :goto_0
.end method
