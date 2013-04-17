.class final Laqg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

.field private synthetic c:Laqf;


# direct methods
.method constructor <init>(Laqf;Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V
    .locals 0

    iput-object p1, p0, Laqg;->c:Laqf;

    iput-object p2, p0, Laqg;->a:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iput-object p3, p0, Laqg;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->getRadioEventCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->getRadioButtonName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Laqg;->c:Laqf;

    invoke-static {v0}, Laqf;->a(Laqf;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    iget-object v0, p0, Laqg;->a:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setIpDialMode(I)V

    iget-object v0, p0, Laqg;->c:Laqf;

    invoke-static {v0}, Laqf;->b(Laqf;)Lii;

    move-result-object v0

    iget-object v0, v0, Lii;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "auto_cache"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laqg;->c:Laqf;

    invoke-static {v0}, Laqf;->c(Laqf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqg;->c:Laqf;

    invoke-static {v0}, Laqf;->d(Laqf;)V

    :goto_0
    iget-object v0, p0, Laqg;->c:Laqf;

    invoke-static {v0}, Laqf;->b(Laqf;)Lii;

    move-result-object v0

    iget-object v1, p0, Laqg;->a:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v1

    iget-object v0, v0, Lii;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "auto"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laqg;->c:Laqf;

    invoke-static {v0}, Laqf;->g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    iget-object v1, p0, Laqg;->a:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    const v0, 0x7f08009c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Laqg;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Laqg;->a:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setIpDialMode(I)V

    iget-object v0, p0, Laqg;->c:Laqf;

    invoke-static {v0}, Laqf;->b(Laqf;)Lii;

    move-result-object v0

    iget-object v0, v0, Lii;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "auto_cache"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laqg;->c:Laqf;

    invoke-static {v0}, Laqf;->e(Laqf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqg;->c:Laqf;

    invoke-virtual {v0}, Laqf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laqg;->a:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setIpDialMode(I)V

    iget-object v0, p0, Laqg;->c:Laqf;

    invoke-static {v0}, Laqf;->b(Laqf;)Lii;

    move-result-object v0

    iget-object v0, v0, Lii;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "auto_cache"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laqg;->c:Laqf;

    invoke-static {v0}, Laqf;->f(Laqf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqg;->c:Laqf;

    invoke-virtual {v0}, Laqf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
