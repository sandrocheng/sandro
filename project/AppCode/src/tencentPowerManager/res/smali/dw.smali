.class public final Ldw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/feedback/eup/IEupUserConfirmer;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldw;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContentView()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Ldw;->c:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldw;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldw;->c:Landroid/view/View;

    iget-object v0, p0, Ldw;->c:Landroid/view/View;

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldw;->b:Landroid/widget/TextView;

    iget-object v0, p0, Ldw;->c:Landroid/view/View;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldw;->d:Landroid/view/View;

    iget-object v0, p0, Ldw;->c:Landroid/view/View;

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldw;->e:Landroid/view/View;

    iget-object v0, p0, Ldw;->c:Landroid/view/View;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ldw;->f:Landroid/widget/EditText;

    iget-object v0, p0, Ldw;->b:Landroid/widget/TextView;

    const v1, 0x7f0600a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Ldw;->c:Landroid/view/View;

    return-object v0
.end method

.method public final getDoCancelClicker()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ldw;->e:Landroid/view/View;

    return-object v0
.end method

.method public final getDoUploadClicker()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ldw;->d:Landroid/view/View;

    return-object v0
.end method

.method public final getUploadContent()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lc;->a()V

    iget-object v0, p0, Ldw;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldw;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lc;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
