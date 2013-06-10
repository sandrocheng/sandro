.class public final Lorg/antivirus/tuneup/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/tuneup/as;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/antivirus/tuneup/as;->b:I

    iput p2, p0, Lorg/antivirus/tuneup/as;->c:I

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lorg/antivirus/tuneup/as;->b:I

    iget v4, p0, Lorg/antivirus/tuneup/as;->c:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v4, v3, :cond_2

    if-lt v2, v3, :cond_1

    if-gt v2, v4, :cond_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-lt v2, v4, :cond_3

    if-le v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_4
    const-string v0, ""

    goto :goto_1
.end method
