.class final Lal;
.super Ljava/lang/Object;

# interfaces
.implements Lan;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/internal/telephony/ISms;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/content/Context;I)Lcom/android/internal/telephony/ITelephony;
    .locals 1

    invoke-static {p1}, La;->a(Landroid/content/Context;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method
