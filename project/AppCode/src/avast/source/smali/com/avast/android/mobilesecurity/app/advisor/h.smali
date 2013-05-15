.class public final enum Lcom/avast/android/mobilesecurity/app/advisor/h;
.super Ljava/lang/Enum;
.source "AdvisorScanTask.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/app/advisor/h;

.field public static final enum b:Lcom/avast/android/mobilesecurity/app/advisor/h;

.field public static final enum c:Lcom/avast/android/mobilesecurity/app/advisor/h;

.field public static final enum d:Lcom/avast/android/mobilesecurity/app/advisor/h;

.field public static final enum e:Lcom/avast/android/mobilesecurity/app/advisor/h;

.field public static final enum f:Lcom/avast/android/mobilesecurity/app/advisor/h;

.field public static final enum g:Lcom/avast/android/mobilesecurity/app/advisor/h;

.field private static final h:Ljava/util/Map;

.field private static final synthetic k:[Lcom/avast/android/mobilesecurity/app/advisor/h;


# instance fields
.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 58
    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    const-string v1, "LOCATION"

    const/4 v2, 0x0

    const-string v3, "group_location"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/avast/android/mobilesecurity/app/advisor/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/advisor/h;->a:Lcom/avast/android/mobilesecurity/app/advisor/h;

    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    const-string v1, "IDENTITY"

    const-string v2, "group_identity"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/avast/android/mobilesecurity/app/advisor/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/advisor/h;->b:Lcom/avast/android/mobilesecurity/app/advisor/h;

    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    const-string v1, "MESSAGES"

    const-string v2, "group_messages"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/avast/android/mobilesecurity/app/advisor/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/advisor/h;->c:Lcom/avast/android/mobilesecurity/app/advisor/h;

    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    const-string v1, "CONTACTS"

    const-string v2, "group_contacts"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/avast/android/mobilesecurity/app/advisor/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/advisor/h;->d:Lcom/avast/android/mobilesecurity/app/advisor/h;

    .line 59
    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    const-string v1, "ACCOUNTS"

    const-string v2, "group_accounts"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/avast/android/mobilesecurity/app/advisor/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/advisor/h;->e:Lcom/avast/android/mobilesecurity/app/advisor/h;

    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    const-string v1, "SETTINGS"

    const/4 v2, 0x6

    const-string v3, "group_settings"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/avast/android/mobilesecurity/app/advisor/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/advisor/h;->f:Lcom/avast/android/mobilesecurity/app/advisor/h;

    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    const-string v1, "WEB"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "group_web"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/app/advisor/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/advisor/h;->g:Lcom/avast/android/mobilesecurity/app/advisor/h;

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/app/advisor/h;

    const/4 v1, 0x0

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->a:Lcom/avast/android/mobilesecurity/app/advisor/h;

    aput-object v2, v0, v1

    sget-object v1, Lcom/avast/android/mobilesecurity/app/advisor/h;->b:Lcom/avast/android/mobilesecurity/app/advisor/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/app/advisor/h;->c:Lcom/avast/android/mobilesecurity/app/advisor/h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/app/advisor/h;->d:Lcom/avast/android/mobilesecurity/app/advisor/h;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/android/mobilesecurity/app/advisor/h;->e:Lcom/avast/android/mobilesecurity/app/advisor/h;

    aput-object v1, v0, v8

    sget-object v1, Lcom/avast/android/mobilesecurity/app/advisor/h;->f:Lcom/avast/android/mobilesecurity/app/advisor/h;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->g:Lcom/avast/android/mobilesecurity/app/advisor/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/app/advisor/h;->k:[Lcom/avast/android/mobilesecurity/app/advisor/h;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/advisor/h;->h:Ljava/util/Map;

    .line 65
    const-class v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    .line 66
    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/advisor/h;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/avast/android/mobilesecurity/app/advisor/h;->i:I

    .line 74
    iput-object p4, p0, Lcom/avast/android/mobilesecurity/app/advisor/h;->j:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/advisor/h;
    .locals 1
    .parameter

    .prologue
    .line 57
    const-class v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/app/advisor/h;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/avast/android/mobilesecurity/app/advisor/h;->k:[Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/app/advisor/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/app/advisor/h;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/h;->i:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/h;->j:Ljava/lang/String;

    return-object v0
.end method
