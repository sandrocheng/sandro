.class final Lcom/keniu/security/rates/i;
.super Ljava/lang/Thread;
.source "RatesRequestMainActivity.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/keniu/security/rates/RatesRequestMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/rates/RatesRequestMainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/keniu/security/rates/i;->b:Lcom/keniu/security/rates/RatesRequestMainActivity;

    iput-object p2, p0, Lcom/keniu/security/rates/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 361
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 362
    iget-object v0, p0, Lcom/keniu/security/rates/i;->b:Lcom/keniu/security/rates/RatesRequestMainActivity;

    iget-object v1, p0, Lcom/keniu/security/rates/i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->b(Lcom/keniu/security/rates/RatesRequestMainActivity;Ljava/lang/String;)V

    .line 363
    return-void
.end method
