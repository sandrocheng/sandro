.class Lcom/avast/android/generic/ui/widget/m;
.super Ljava/lang/Object;
.source "PasswordTextView.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/avast/android/generic/ui/widget/PasswordTextView;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/ui/widget/PasswordTextView;Lcom/avast/android/generic/ui/widget/l;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/m;->b:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v0, Lcom/avast/android/generic/ui/widget/k;->a:[I

    invoke-virtual {p2}, Lcom/avast/android/generic/ui/widget/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 164
    :pswitch_0
    const-string v0, "0-9"

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/m;->a:Ljava/lang/String;

    goto :goto_0

    .line 167
    :pswitch_1
    const-string v0, "a-zA-Z"

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/m;->a:Ljava/lang/String;

    goto :goto_0

    .line 170
    :pswitch_2
    const-string v0, "0-9a-zA-Z"

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/m;->a:Ljava/lang/String;

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/m;->b:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->b(Lcom/avast/android/generic/ui/widget/PasswordTextView;)Lcom/avast/android/generic/ui/widget/p;

    move-result-object v0

    iget-object v0, v0, Lcom/avast/android/generic/ui/widget/p;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\*]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
