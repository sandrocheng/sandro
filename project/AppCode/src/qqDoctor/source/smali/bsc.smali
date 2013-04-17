.class final Lbsc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

.field private synthetic b:Lbsb;


# direct methods
.method constructor <init>(Lbsb;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V
    .locals 0

    iput-object p1, p0, Lbsc;->b:Lbsb;

    iput-object p2, p0, Lbsc;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

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

    iget-object v0, p0, Lbsc;->b:Lbsb;

    iput p3, v0, Lbsb;->a:I

    iget-object v0, p0, Lbsc;->b:Lbsb;

    invoke-static {v0}, Lbsb;->a(Lbsb;)Ljl;

    move-result-object v0

    iget-object v1, p0, Lbsc;->b:Lbsb;

    iget v1, v1, Lbsb;->a:I

    iget-object v0, v0, Ljl;->c:Landroid/content/SharedPreferences$Editor;

    const-string v2, "scanPlan"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lbsc;->b:Lbsb;

    invoke-static {v0}, Lbsb;->a(Lbsb;)Ljl;

    move-result-object v0

    iget-object v0, v0, Ljl;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "scan_time_modified"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lbsc;->b:Lbsb;

    invoke-static {v0}, Lbsb;->b(Lbsb;)V

    iget-object v0, p0, Lbsc;->b:Lbsb;

    invoke-static {v0}, Lbsb;->a(Lbsb;)Ljl;

    move-result-object v0

    iget-object v0, v0, Ljl;->b:Landroid/content/SharedPreferences;

    const-string v1, "scanPlan"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbsc;->b:Lbsb;

    invoke-virtual {v0}, Lbsb;->a()V

    :goto_0
    iget-object v0, p0, Lbsc;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lbsc;->b:Lbsb;

    invoke-virtual {v0}, Lbsb;->b()V

    goto :goto_0
.end method
