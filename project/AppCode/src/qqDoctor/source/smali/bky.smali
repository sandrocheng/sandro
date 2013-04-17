.class final Lbky;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lmk;

.field private synthetic b:I

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

.field private synthetic d:Lbkn;


# direct methods
.method constructor <init>(Lbkn;Lmk;ILcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V
    .locals 0

    iput-object p1, p0, Lbky;->d:Lbkn;

    iput-object p2, p0, Lbky;->a:Lmk;

    iput p3, p0, Lbky;->b:I

    iput-object p4, p0, Lbky;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

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

    if-nez p3, :cond_2

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v0

    iget-object v1, p0, Lbky;->a:Lmk;

    const-string v2, "nocharge_body_smslog"

    invoke-static {v1, v5}, Lgu;->a(Lmk;Z)Landroid/content/ContentValues;

    move-result-object v1

    iget-object v3, v0, Ljo;->c:Lhs;

    const-string v4, "id"

    invoke-virtual {v3, v2, v4, v1}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, v0, Ljo;->c:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    iget-object v0, p0, Lbky;->d:Lbkn;

    iget-object v1, p0, Lbky;->a:Lmk;

    iget v2, p0, Lbky;->b:I

    invoke-static {v0, v1, v2, v5, v5}, Lbkn;->a(Lbkn;Lmk;IZZ)V

    iget-object v0, p0, Lbky;->d:Lbkn;

    iget-object v1, p0, Lbky;->a:Lmk;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lbkn;->a(Lbkn;Lmk;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lbky;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v0

    iget-object v1, p0, Lbky;->a:Lmk;

    const-string v2, "nocharge_phonenum_smslog"

    invoke-static {v1, v5}, Lgu;->a(Lmk;Z)Landroid/content/ContentValues;

    move-result-object v1

    iget-object v3, v0, Ljo;->c:Lhs;

    const-string v4, "id"

    invoke-virtual {v3, v2, v4, v1}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, v0, Ljo;->c:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    iget-object v0, p0, Lbky;->d:Lbkn;

    invoke-static {v0}, Lbkn;->w(Lbkn;)Laku;

    move-result-object v0

    iget v1, p0, Lbky;->b:I

    invoke-virtual {v0, v1}, Laku;->d(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lbky;->d:Lbkn;

    iget v2, p0, Lbky;->b:I

    invoke-static {v1, v0, v2}, Lbkn;->a(Lbkn;Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lbky;->d:Lbkn;

    iget-object v1, p0, Lbky;->a:Lmk;

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lbkn;->a(Lbkn;Lmk;I)V

    goto :goto_0
.end method
