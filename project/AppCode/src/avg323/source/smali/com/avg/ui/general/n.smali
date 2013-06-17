.class public Lcom/avg/ui/general/n;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static final b:I

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8c

    :goto_0
    sput v0, Lcom/avg/ui/general/n;->a:I

    sget v0, Lcom/avg/ui/general/c;->avg_icon:I

    sput v0, Lcom/avg/ui/general/n;->b:I

    sget v0, Lcom/avg/ui/general/c;->partner_logo:I

    sput v0, Lcom/avg/ui/general/n;->c:I

    return-void

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method
