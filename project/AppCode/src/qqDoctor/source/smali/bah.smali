.class final Lbah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:I

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lazu;


# direct methods
.method constructor <init>(Lazu;Landroid/widget/EditText;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbah;->d:Lazu;

    iput-object p2, p0, Lbah;->a:Landroid/widget/EditText;

    iput p3, p0, Lbah;->b:I

    iput-object p4, p0, Lbah;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lbah;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x4980

    mul-float/2addr v0, v1

    float-to-long v0, v0

    const-wide v2, 0x10000000000L

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v2

    const/16 v3, 0x666d

    invoke-virtual {v2, v3}, Lnd;->a(I)V

    :cond_0
    iget-object v2, p0, Lbah;->d:Lazu;

    invoke-static {v2, v0, v1}, Lazu;->b(Lazu;J)J

    iget-object v0, p0, Lbah;->d:Lazu;

    invoke-static {v0}, Lazu;->g(Lazu;)Liu;

    move-result-object v0

    iget-object v1, p0, Lbah;->d:Lazu;

    invoke-static {v1}, Lazu;->s(Lazu;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Liu;->setUsedForMonth(J)V

    iget-object v0, p0, Lbah;->d:Lazu;

    invoke-static {v0}, Lazu;->g(Lazu;)Liu;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Liu;->a(J)V

    const/4 v0, 0x0

    sput-boolean v0, Lazu;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lazu;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lwe;->a:Z

    iget-object v0, p0, Lbah;->d:Lazu;

    invoke-static {v0}, Lazu;->h(Lazu;)Lcom/tencent/tmsecure/module/network/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbah;->d:Lazu;

    invoke-static {v1}, Lazu;->t(Lazu;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0426

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbah;->d:Lazu;

    invoke-static {v1}, Lazu;->s(Lazu;)J

    move-result-wide v1

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lbah;->d:Lazu;

    invoke-static {v0}, Lazu;->u(Lazu;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lbah;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lbah;->d:Lazu;

    invoke-static {v0}, Lazu;->a(Lazu;)Lakb;

    move-result-object v0

    invoke-virtual {v0}, Lakb;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lbah;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lbah;->d:Lazu;

    invoke-static {v0}, Lazu;->v(Lazu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbah;->d:Lazu;

    invoke-static {v1}, Lazu;->w(Lazu;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0427

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lbah;->d:Lazu;

    invoke-static {v0}, Lazu;->x(Lazu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbah;->d:Lazu;

    invoke-static {v1}, Lazu;->y(Lazu;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0429

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
