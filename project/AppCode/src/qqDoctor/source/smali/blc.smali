.class final Lblc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Llb;

.field private synthetic b:I

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic e:Lbkn;


# direct methods
.method constructor <init>(Lbkn;Llb;ILcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lblc;->e:Lbkn;

    iput-object p2, p0, Lblc;->a:Llb;

    iput p3, p0, Lblc;->b:I

    iput-object p4, p0, Lblc;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object p5, p0, Lblc;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lblc;->e:Lbkn;

    iget-object v1, p0, Lblc;->a:Llb;

    iget v2, p0, Lblc;->b:I

    invoke-static {v0, v1, v2}, Lbkn;->a(Lbkn;Llb;I)V

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v1

    iget-object v0, p0, Lblc;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, v1, Ljo;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "isshowreport"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lblc;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
