.class public final enum Lcom/antivirus/widget/appbackup/b;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/avg/widget/model/plugin/a;


# static fields
.field public static final enum a:Lcom/antivirus/widget/appbackup/b;

.field private static final synthetic b:[Lcom/antivirus/widget/appbackup/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/antivirus/widget/appbackup/b;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/antivirus/widget/appbackup/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/widget/appbackup/b;->a:Lcom/antivirus/widget/appbackup/b;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/antivirus/widget/appbackup/b;

    sget-object v1, Lcom/antivirus/widget/appbackup/b;->a:Lcom/antivirus/widget/appbackup/b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/antivirus/widget/appbackup/b;->b:[Lcom/antivirus/widget/appbackup/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/widget/appbackup/b;
    .locals 1

    const-class v0, Lcom/antivirus/widget/appbackup/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/widget/appbackup/b;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/widget/appbackup/b;
    .locals 1

    sget-object v0, Lcom/antivirus/widget/appbackup/b;->b:[Lcom/antivirus/widget/appbackup/b;

    invoke-virtual {v0}, [Lcom/antivirus/widget/appbackup/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/widget/appbackup/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f020174

    return v0
.end method
