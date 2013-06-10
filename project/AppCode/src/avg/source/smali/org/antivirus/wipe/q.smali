.class final Lorg/antivirus/wipe/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lorg/antivirus/wipe/WipeByApp;->c:Lorg/antivirus/wipe/ai;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "content://sms"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "content://sms/inbox"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "content://sms/sent"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "content://mms/inbox"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "content://mms"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "content://mms-sms"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "content://mms/address"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "content://mms/part"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "content://mms/sent"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "content://mms/outbox"

    aput-object v4, v2, v3

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/antivirus/wipe/ai;->a(Landroid/net/Uri;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
