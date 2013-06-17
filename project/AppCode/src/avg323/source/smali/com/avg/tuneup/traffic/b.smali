.class Lcom/avg/tuneup/traffic/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/traffic/a;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/b;->a:Lcom/avg/tuneup/traffic/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/b;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v1, v0}, Lcom/avg/tuneup/traffic/a;->a(Lcom/avg/tuneup/traffic/a;Ljava/util/Calendar;)Ljava/util/Calendar;

    iget-object v0, p0, Lcom/avg/tuneup/traffic/b;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/a;->a(Lcom/avg/tuneup/traffic/a;)Lcom/avg/tuneup/traffic/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/o;->notifyDataSetChanged()V

    return-void
.end method
