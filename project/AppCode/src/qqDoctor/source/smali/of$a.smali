.class final Lof$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/tools/IFileChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lof;)V
    .locals 0

    invoke-direct {p0}, Lof$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanage(ILjava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lof;->b(Ljava/lang/String;)V

    return-void
.end method
