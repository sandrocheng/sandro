.class final Lcom/tencent/feedback/eup/f;
.super Landroid/widget/LinearLayout;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/feedback/eup/IEupUserConfirmer;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 194
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    iput-object v0, p0, Lcom/tencent/feedback/eup/f;->a:Landroid/widget/TextView;

    .line 188
    iput-object v0, p0, Lcom/tencent/feedback/eup/f;->b:Landroid/widget/EditText;

    .line 189
    invoke-virtual {p0, v1}, Lcom/tencent/feedback/eup/f;->setOrientation(I)V

    .line 201
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/feedback/eup/f;->a:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/tencent/feedback/eup/f;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/eup/f;->addView(Landroid/view/View;)V

    .line 205
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/feedback/eup/f;->b:Landroid/widget/EditText;

    .line 206
    iget-object v0, p0, Lcom/tencent/feedback/eup/f;->b:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 208
    iget-object v0, p0, Lcom/tencent/feedback/eup/f;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/eup/f;->addView(Landroid/view/View;)V

    .line 210
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 212
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 217
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 218
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/feedback/eup/f;->c:Landroid/widget/Button;

    .line 219
    iget-object v2, p0, Lcom/tencent/feedback/eup/f;->c:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v2, p0, Lcom/tencent/feedback/eup/f;->c:Landroid/widget/Button;

    const-string v3, "\u662f"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v2, p0, Lcom/tencent/feedback/eup/f;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/feedback/eup/f;->d:Landroid/widget/Button;

    .line 225
    iget-object v2, p0, Lcom/tencent/feedback/eup/f;->d:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v1, p0, Lcom/tencent/feedback/eup/f;->d:Landroid/widget/Button;

    const-string v2, "\u5426"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lcom/tencent/feedback/eup/f;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/tencent/feedback/eup/f;->addView(Landroid/view/View;)V

    .line 230
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    const-string p1, ""

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/eup/f;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    return-void
.end method

.method public final getContentView()Landroid/view/View;
    .locals 0

    .prologue
    .line 242
    return-object p0
.end method

.method public final getDoCancelClicker()Landroid/view/View;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/tencent/feedback/eup/f;->d:Landroid/widget/Button;

    return-object v0
.end method

.method public final getDoUploadClicker()Landroid/view/View;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/tencent/feedback/eup/f;->c:Landroid/widget/Button;

    return-object v0
.end method

.method public final getUploadContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/tencent/feedback/eup/f;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
