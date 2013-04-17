.class final Lbsd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

.field private synthetic b:[I

.field private synthetic c:Lbsb;


# direct methods
.method constructor <init>(Lbsb;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;[I)V
    .locals 0

    iput-object p1, p0, Lbsd;->c:Lbsb;

    iput-object p2, p0, Lbsd;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iput-object p3, p0, Lbsd;->b:[I

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

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lbsd;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    const/4 v0, 0x7

    new-array v2, v0, [Z

    aput-boolean v4, v2, p3

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-boolean v3, v2, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbsd;->b:[I

    aput v4, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lbsd;->b:[I

    aput v1, v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lbsd;->c:Lbsb;

    invoke-static {v0}, Lbsb;->a(Lbsb;)Ljl;

    move-result-object v0

    iget-object v0, v0, Ljl;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "scan_time_modified"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lbsd;->c:Lbsb;

    invoke-static {v0}, Lbsb;->a(Lbsb;)Ljl;

    move-result-object v0

    iget-object v1, p0, Lbsd;->b:[I

    invoke-virtual {v0, v1}, Ljl;->a([I)V

    iget-object v0, p0, Lbsd;->c:Lbsb;

    iget-object v1, p0, Lbsd;->c:Lbsb;

    iget-object v2, p0, Lbsd;->b:[I

    invoke-static {v1, v2}, Lbsb;->a(Lbsb;[I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbsb;->b:Ljava/lang/String;

    iget-object v0, p0, Lbsd;->c:Lbsb;

    invoke-static {v0}, Lbsb;->b(Lbsb;)V

    iget-object v0, p0, Lbsd;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    iget-object v0, p0, Lbsd;->c:Lbsb;

    invoke-virtual {v0}, Lbsb;->b()V

    return-void
.end method
