.class final Laqh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

.field private synthetic b:Laqf;


# direct methods
.method constructor <init>(Laqf;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V
    .locals 0

    iput-object p1, p0, Laqh;->b:Laqf;

    iput-object p2, p0, Laqh;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    iget-object v0, p0, Laqh;->b:Laqf;

    invoke-static {v0}, Laqf;->h(Laqf;)V

    :goto_0
    const v0, 0x7f08009c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Laqh;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Laqh;->b:Laqf;

    invoke-static {v0}, Laqf;->g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v1

    iget-object v0, p0, Laqh;->b:Laqf;

    invoke-static {v0}, Laqf;->i(Laqf;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setIpHeader(Ljava/lang/String;)V

    iget-object v0, p0, Laqh;->b:Laqf;

    invoke-static {v0}, Laqf;->j(Laqf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v2, p0, Laqh;->b:Laqf;

    invoke-static {v2}, Laqf;->i(Laqf;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqh;->b:Laqf;

    invoke-virtual {v0}, Laqf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Laqh;->b:Laqf;

    invoke-static {v0}, Laqf;->g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    iget-object v0, p0, Laqh;->b:Laqf;

    invoke-static {v0}, Laqf;->b(Laqf;)Lii;

    move-result-object v0

    iget-object v1, p0, Laqh;->b:Laqf;

    invoke-static {v1}, Laqf;->i(Laqf;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    iget-object v0, v0, Lii;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "number"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
