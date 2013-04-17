.class final Laqj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

.field private synthetic b:Laqf;


# direct methods
.method constructor <init>(Laqf;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V
    .locals 0

    iput-object p1, p0, Laqj;->b:Laqf;

    iput-object p2, p0, Laqj;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0}, Laqf;->g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v1

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0, p3}, Laqf;->b(Laqf;I)I

    iget-object v0, p0, Laqj;->b:Laqf;

    iget-object v2, p0, Laqj;->b:Laqf;

    invoke-static {v2}, Laqf;->r(Laqf;)I

    move-result v2

    invoke-static {v0, v2}, Laqf;->c(Laqf;I)I

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0}, Laqf;->l(Laqf;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Laqj;->b:Laqf;

    invoke-static {v2}, Laqf;->m(Laqf;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Laqj;->b:Laqf;

    invoke-static {v3}, Laqf;->r(Laqf;)I

    move-result v3

    aget-object v2, v2, v3

    aput-object v2, v0, v5

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0}, Laqf;->l(Laqf;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0}, Laqf;->k(Laqf;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Laqj;->b:Laqf;

    invoke-static {v3}, Laqf;->s(Laqf;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v3, p0, Laqj;->b:Laqf;

    invoke-static {v3}, Laqf;->t(Laqf;)I

    move-result v3

    aget-object v0, v0, v3

    aput-object v0, v2, v4

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    iget-object v2, p0, Laqj;->b:Laqf;

    invoke-static {v2}, Laqf;->l(Laqf;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    iget-object v3, p0, Laqj;->b:Laqf;

    invoke-static {v3}, Laqf;->l(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setLocalPhoneLocation(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;)V

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0}, Laqf;->u(Laqf;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Laqj;->b:Laqf;

    invoke-static {v3}, Laqf;->l(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laqj;->b:Laqf;

    invoke-static {v3}, Laqf;->l(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0}, Laqf;->a(Laqf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0}, Laqf;->o(Laqf;)Z

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0}, Laqf;->b(Laqf;)Lii;

    move-result-object v0

    iget-object v2, p0, Laqj;->b:Laqf;

    invoke-static {v2}, Laqf;->a(Laqf;)Z

    move-result v2

    iget-object v0, v0, Lii;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "isfirst"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0}, Laqf;->b(Laqf;)Lii;

    move-result-object v0

    iget-object v0, v0, Lii;->a:Landroid/content/SharedPreferences;

    const-string v2, "auto_cache"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setIpDialMode(I)V

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0}, Laqf;->v(Laqf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-virtual {v0}, Laqf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0}, Laqf;->g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    iget-object v0, p0, Laqj;->b:Laqf;

    invoke-static {v0}, Laqf;->b(Laqf;)Lii;

    move-result-object v0

    iget-object v1, p0, Laqj;->b:Laqf;

    invoke-static {v1}, Laqf;->l(Laqf;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    iget-object v2, p0, Laqj;->b:Laqf;

    invoke-static {v2}, Laqf;->l(Laqf;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lii;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f08009c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Laqj;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    return-void
.end method
