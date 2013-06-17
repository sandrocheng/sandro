.class public Lcom/antivirus/d/a;
.super Lcom/avg/tuneup/i;

# interfaces
.implements Lcom/avg/toolkit/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/avg/tuneup/i;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/antivirus/ui/performance/AvPerformanceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/tuneup/j;->a(Ljava/lang/String;)V

    const-class v0, Lcom/antivirus/AVService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/tuneup/j;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    return-void
.end method
